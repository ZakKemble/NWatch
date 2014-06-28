/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

using System;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Reflection;
using System.IO;
using System.ComponentModel;

namespace bitmapConverter
{
    public partial class Form1 : Form
    {
        private converter greyImage = new converter();
        private string[] files;
        private bool busy;

        public Form1()
        {
            InitializeComponent();

            Assembly exeAss = System.Reflection.Assembly.GetExecutingAssembly();
            this.Icon = System.Drawing.Icon.ExtractAssociatedIcon(exeAss.Location);
            this.Text = "Bitmap Converter v" + exeAss.GetName().Version.ToString();

            this.AllowDrop = true;
            this.DragEnter += new DragEventHandler(Form1_DragEnter);
            this.DragDrop += new DragEventHandler(Form1_DragDrop);
            this.txtCode.Click += new System.EventHandler(txtCode_Clicked);

            lblInfo.Text = "Ready (drag an image in)";

            saveFileDialog1.Filter = "Include|*.h|All files|*.*";
            saveFileDialog1.Title = "Save image byte array";
            saveFileDialog1.FileOk += new CancelEventHandler(saveFileDialog1_FileOk);

            busy = false;
        }

        // Drag and drop
        void Form1_DragEnter(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
                e.Effect = DragDropEffects.Copy;
        }

        // Drag and drop
        void Form1_DragDrop(object sender, DragEventArgs e)
        {
            string[] files = (string[])e.Data.GetData(DataFormats.FileDrop);
            loadImage(files);
        }

        // Load image
        private void loadImage(string[] _files)
        {
            if (!busy)
            {
                files = _files;
                busy = true;

                // Begin
                MethodInvoker mi = new MethodInvoker(loadInvoke);
                mi.BeginInvoke(null, null);
            }
        }

        // Text box clicked, select and copy
        private void txtCode_Clicked(object sender, EventArgs e)
        {
            txtCode.SelectAll();
            if (txtCode.SelectedText.Length > 0)
                Clipboard.SetText(txtCode.SelectedText);
        }

        private void pbSave_Click(object sender, EventArgs e)
        {
            saveFileDialog1.ShowDialog();
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            System.Diagnostics.Process.Start(linkLabel1.Text);
        }

        private void saveFileDialog1_FileOk(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (saveFileDialog1.FileName != "")
            {
                StreamWriter saveFile = new StreamWriter(saveFileDialog1.FileName, false);
                saveFile.Write(greyImage.getCode());
                saveFile.Close();
            }
        }

        // Load image
        private void loadInvoke()
        {
            Delegate info = new controlDelegate(updateInfoText);
            Delegate code = new controlDelegate(updateCodeText);
            Delegate img = new controlDelegate(updatePic);

            BeginInvoke(info, (object)"Loading...");

            if (!greyImage.load(files[0], cbHorizontal.Checked))
            {
                BeginInvoke(info, (object)("Error opening image: " + greyImage.lastError()));
                MessageBox.Show("Error opening image: " + greyImage.lastError(), "Image error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                int w = greyImage.getImage().Width;
                int h = greyImage.getImage().Height;

                string strInfo = "Width: " + w + " | Height: " + h + " | Total size: " + String.Format("{0:n0}", w * h) + "B";
                string strCode = greyImage.getCode();

                BeginInvoke(info, (object)strInfo);

                if (strCode.Length > 80000)
                    strCode = "Too much data to fit here, click save instead";

                BeginInvoke(code, (object)strCode);
                BeginInvoke(img, (object)greyImage.getImage());
            }

            busy = false;
        }

        private delegate void controlDelegate(Object obj);

        private void updateInfoText(Object obj)
        {
            lblInfo.Text = (string)obj;
        }

        private void updateCodeText(Object obj)
        {
            txtCode.Text = (string)obj;
        }

        private void updatePic(Object obj)
        {
            pbPreview.Image = (Bitmap)obj;
        }
    }
}
