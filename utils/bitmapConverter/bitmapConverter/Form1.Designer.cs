namespace bitmapConverter
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.pbSave = new System.Windows.Forms.PictureBox();
            this.linkLabel1 = new System.Windows.Forms.LinkLabel();
            this.lblInfo = new System.Windows.Forms.Label();
            this.pbPreview = new System.Windows.Forms.PictureBox();
            this.txtCode = new System.Windows.Forms.TextBox();
            this.saveFileDialog1 = new System.Windows.Forms.SaveFileDialog();
            this.cbHorizontal = new System.Windows.Forms.CheckBox();
            ((System.ComponentModel.ISupportInitialize)(this.pbSave)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbPreview)).BeginInit();
            this.SuspendLayout();
            // 
            // pbSave
            // 
            this.pbSave.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pbSave.BackgroundImage")));
            this.pbSave.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.pbSave.Cursor = System.Windows.Forms.Cursors.Hand;
            this.pbSave.Location = new System.Drawing.Point(474, 286);
            this.pbSave.Name = "pbSave";
            this.pbSave.Size = new System.Drawing.Size(14, 14);
            this.pbSave.TabIndex = 10;
            this.pbSave.TabStop = false;
            this.pbSave.Click += new System.EventHandler(this.pbSave_Click);
            // 
            // linkLabel1
            // 
            this.linkLabel1.AutoSize = true;
            this.linkLabel1.Location = new System.Drawing.Point(346, 455);
            this.linkLabel1.Name = "linkLabel1";
            this.linkLabel1.Size = new System.Drawing.Size(142, 13);
            this.linkLabel1.TabIndex = 9;
            this.linkLabel1.TabStop = true;
            this.linkLabel1.Text = "http://blog.zakkemble.co.uk";
            this.linkLabel1.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkLabel1_LinkClicked);
            // 
            // lblInfo
            // 
            this.lblInfo.AutoSize = true;
            this.lblInfo.Location = new System.Drawing.Point(12, 286);
            this.lblInfo.Name = "lblInfo";
            this.lblInfo.Size = new System.Drawing.Size(35, 13);
            this.lblInfo.TabIndex = 8;
            this.lblInfo.Text = "label1";
            // 
            // pbPreview
            // 
            this.pbPreview.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pbPreview.Location = new System.Drawing.Point(12, 11);
            this.pbPreview.Name = "pbPreview";
            this.pbPreview.Size = new System.Drawing.Size(476, 272);
            this.pbPreview.TabIndex = 7;
            this.pbPreview.TabStop = false;
            // 
            // txtCode
            // 
            this.txtCode.Location = new System.Drawing.Point(12, 302);
            this.txtCode.Multiline = true;
            this.txtCode.Name = "txtCode";
            this.txtCode.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.txtCode.Size = new System.Drawing.Size(476, 150);
            this.txtCode.TabIndex = 6;
            // 
            // cbHorizontal
            // 
            this.cbHorizontal.AutoSize = true;
            this.cbHorizontal.Location = new System.Drawing.Point(12, 458);
            this.cbHorizontal.Name = "cbHorizontal";
            this.cbHorizontal.Size = new System.Drawing.Size(73, 17);
            this.cbHorizontal.TabIndex = 11;
            this.cbHorizontal.Text = "Horizontal";
            this.cbHorizontal.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(500, 481);
            this.Controls.Add(this.cbHorizontal);
            this.Controls.Add(this.pbSave);
            this.Controls.Add(this.linkLabel1);
            this.Controls.Add(this.lblInfo);
            this.Controls.Add(this.pbPreview);
            this.Controls.Add(this.txtCode);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.Name = "Form1";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.pbSave)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbPreview)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pbSave;
        private System.Windows.Forms.LinkLabel linkLabel1;
        private System.Windows.Forms.Label lblInfo;
        private System.Windows.Forms.PictureBox pbPreview;
        private System.Windows.Forms.TextBox txtCode;
        private System.Windows.Forms.SaveFileDialog saveFileDialog1;
        private System.Windows.Forms.CheckBox cbHorizontal;
    }
}

