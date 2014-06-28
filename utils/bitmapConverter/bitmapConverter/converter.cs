/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

using System;
using System.Drawing;
using System.Windows.Forms;
using System.Text;
using System.IO;
using System.Drawing.Imaging;

namespace bitmapConverter
{
    class converter
    {
        private Bitmap img; // Image
        private string lastErrorStr = "";
        private StringBuilder code = new StringBuilder();
        private string varName = ""; // File name without extension

        // Get last error
        public string lastError()
        {
            return lastErrorStr;
        }

        // Load image
        public bool load(string file, bool horizontal)
        {
            // Try to load image
            try
            {
                using (Bitmap temp = new Bitmap(file))
                {
                    if (img != null)
                    {
                        img.Dispose();
                        img = null;
                    }

                    int width = temp.Width;
                    if (horizontal && width % 8 != 0)
                        width += 8-(width % 8);

                    // Make sure image is in the right format
                    img = new Bitmap(width, temp.Height, PixelFormat.Format32bppArgb);
                    using (Graphics g = Graphics.FromImage(img))
                    {
                        g.Clear(Color.Transparent);
                        g.DrawImage(temp, 0, 0, temp.Width, temp.Height);
                    }
                }
            }
            catch (Exception ex)
            {
                lastErrorStr = ex.Message;
                return false;
            }

            varName = Path.GetFileNameWithoutExtension(file);

            redToGreyHex(horizontal);

            return true;
        }

        // Get red values from image
        private void redToGreyHex(bool horizontal)
        {
            //code.Clear();
            code.Length = 0;
            code.Capacity = 0;

            code.AppendLine("const byte " + varName + "[] PROGMEM ={");

            if (horizontal)
            {
                for (int y = 0; y < img.Height; y++)
                {
                    for (int x = 0; x < img.Width / 8; x++)
                    {
                        byte val = 0;
                        for (int b = 0; b < 8; b++)
                        {
                            // Get pixel info
                            Color pixel = img.GetPixel((x * 8) + b, y);
                            byte red = pixel.R;
                            byte alpha = pixel.A;

                            // A black pixel must be fully opaque and have no red, anything else makes a white pixel
                            bool pixelIsBlack = (red == 0 && alpha == 255);

                            // Apply to preview image
                            img.SetPixel((x * 8) + b, y, Color.FromKnownColor(pixelIsBlack ? KnownColor.Black : KnownColor.White));

                            // Apply to generated code
                            if (pixelIsBlack)
                                val |= (byte)(1 << (7 - b));
                        }
                        code.AppendFormat("0x{0:X2},", val);
                    }
                    code.Append(Environment.NewLine);
                }
            }
            else
            {
                for (int y = 0; y < img.Height / 8; y++)
                {
                    for (int x = 0; x < img.Width; x++)
                    {
                        byte val = 0;
                        for (int b = 0; b < 8; b++)
                        {
                            // Get pixel info
                            Color pixel = img.GetPixel(x, (y * 8) + b);
                            byte red = pixel.R;
                            byte alpha = pixel.A;

                            // A black pixel must be fully opaque and have no red, anything else makes a white pixel
                            bool pixelIsBlack = (red == 0 && alpha == 255);

                            // Apply to preview image
                            img.SetPixel(x, (y * 8) + b, Color.FromKnownColor(pixelIsBlack ? KnownColor.Black : KnownColor.White));

                            // Apply to generated code
                            if (pixelIsBlack)
                                val |= (byte)(1 << b);
                        }
                        code.AppendFormat("0x{0:X2},", val);
                    }
                    code.Append(Environment.NewLine);
                }
            }

            code.AppendLine("};");
        }

        public string getCode()
        {
            return code.ToString();
        }

        public Bitmap getImage()
        {
            return img;
        }
    }
}
