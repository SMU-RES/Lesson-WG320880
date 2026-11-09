namespace Database
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            label1 = new Label();
            label2 = new Label();
            TimeStart = new DateTimePicker();
            TimeEnd = new DateTimePicker();
            button1 = new Button();
            button2 = new Button();
            Form = new DataGridView();
            label3 = new Label();
            label4 = new Label();
            label5 = new Label();
            label6 = new Label();
            label7 = new Label();
            Lat = new TextBox();
            Lon = new TextBox();
            Course = new TextBox();
            Speed = new TextBox();
            TimeAdd = new DateTimePicker();
            button3 = new Button();
            groupBox1 = new GroupBox();
            ((System.ComponentModel.ISupportInitialize)Form).BeginInit();
            groupBox1.SuspendLayout();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(19, 35);
            label1.Margin = new Padding(4, 0, 4, 0);
            label1.Name = "label1";
            label1.Size = new Size(69, 20);
            label1.TabIndex = 0;
            label1.Text = "起始时间";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(298, 35);
            label2.Margin = new Padding(4, 0, 4, 0);
            label2.Name = "label2";
            label2.Size = new Size(20, 20);
            label2.TabIndex = 1;
            label2.Text = "~";
            // 
            // TimeStart
            // 
            TimeStart.Location = new Point(118, 33);
            TimeStart.Margin = new Padding(4);
            TimeStart.Name = "TimeStart";
            TimeStart.Size = new Size(166, 27);
            TimeStart.TabIndex = 2;
            TimeStart.Value = new DateTime(2000, 1, 1, 0, 0, 0, 0);
            // 
            // TimeEnd
            // 
            TimeEnd.Location = new Point(333, 33);
            TimeEnd.Margin = new Padding(4);
            TimeEnd.Name = "TimeEnd";
            TimeEnd.Size = new Size(166, 27);
            TimeEnd.TabIndex = 3;
            TimeEnd.ValueChanged += dateTimePicker2_ValueChanged;
            // 
            // button1
            // 
            button1.Location = new Point(540, 33);
            button1.Margin = new Padding(4);
            button1.Name = "button1";
            button1.Size = new Size(96, 27);
            button1.TabIndex = 4;
            button1.Text = "查询";
            button1.UseVisualStyleBackColor = true;
            button1.Click += Query;
            // 
            // button2
            // 
            button2.Location = new Point(508, 280);
            button2.Margin = new Padding(4);
            button2.Name = "button2";
            button2.Size = new Size(129, 27);
            button2.TabIndex = 5;
            button2.Text = "删除选中行";
            button2.UseVisualStyleBackColor = true;
            button2.Click += Delete;
            // 
            // Form
            // 
            Form.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            Form.Location = new Point(19, 68);
            Form.Margin = new Padding(4);
            Form.Name = "Form";
            Form.RowHeadersWidth = 51;
            Form.Size = new Size(617, 200);
            Form.TabIndex = 6;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(32, 47);
            label3.Margin = new Padding(4, 0, 4, 0);
            label3.Name = "label3";
            label3.Size = new Size(39, 20);
            label3.TabIndex = 7;
            label3.Text = "时间";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(32, 94);
            label4.Margin = new Padding(4, 0, 4, 0);
            label4.Name = "label4";
            label4.Size = new Size(39, 20);
            label4.TabIndex = 8;
            label4.Text = "经度";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(186, 94);
            label5.Margin = new Padding(4, 0, 4, 0);
            label5.Name = "label5";
            label5.Size = new Size(39, 20);
            label5.TabIndex = 9;
            label5.Text = "纬度";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(32, 141);
            label6.Margin = new Padding(4, 0, 4, 0);
            label6.Name = "label6";
            label6.Size = new Size(39, 20);
            label6.TabIndex = 10;
            label6.Text = "航向";
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new Point(186, 141);
            label7.Margin = new Padding(4, 0, 4, 0);
            label7.Name = "label7";
            label7.Size = new Size(39, 20);
            label7.TabIndex = 11;
            label7.Text = "航速";
            // 
            // Lat
            // 
            Lat.Location = new Point(96, 92);
            Lat.Margin = new Padding(4);
            Lat.Name = "Lat";
            Lat.Size = new Size(76, 27);
            Lat.TabIndex = 12;
            // 
            // Lon
            // 
            Lon.Location = new Point(251, 92);
            Lon.Margin = new Padding(4);
            Lon.Name = "Lon";
            Lon.Size = new Size(76, 27);
            Lon.TabIndex = 13;
            // 
            // Course
            // 
            Course.Location = new Point(96, 139);
            Course.Margin = new Padding(4);
            Course.Name = "Course";
            Course.Size = new Size(76, 27);
            Course.TabIndex = 14;
            // 
            // Speed
            // 
            Speed.Location = new Point(251, 139);
            Speed.Margin = new Padding(4);
            Speed.Name = "Speed";
            Speed.Size = new Size(76, 27);
            Speed.TabIndex = 15;
            // 
            // TimeAdd
            // 
            TimeAdd.Location = new Point(90, 45);
            TimeAdd.Margin = new Padding(4);
            TimeAdd.Name = "TimeAdd";
            TimeAdd.Size = new Size(237, 27);
            TimeAdd.TabIndex = 16;
            TimeAdd.ValueChanged += dateTimePicker3_ValueChanged;
            // 
            // button3
            // 
            button3.Location = new Point(354, 45);
            button3.Margin = new Padding(4);
            button3.Name = "button3";
            button3.Size = new Size(62, 121);
            button3.TabIndex = 17;
            button3.Text = "添加一条数据";
            button3.UseVisualStyleBackColor = true;
            button3.Click += Add;
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(button3);
            groupBox1.Controls.Add(label3);
            groupBox1.Controls.Add(TimeAdd);
            groupBox1.Controls.Add(label4);
            groupBox1.Controls.Add(Speed);
            groupBox1.Controls.Add(label5);
            groupBox1.Controls.Add(Course);
            groupBox1.Controls.Add(label6);
            groupBox1.Controls.Add(Lon);
            groupBox1.Controls.Add(label7);
            groupBox1.Controls.Add(Lat);
            groupBox1.Location = new Point(19, 280);
            groupBox1.Margin = new Padding(4);
            groupBox1.Name = "groupBox1";
            groupBox1.Padding = new Padding(4);
            groupBox1.Size = new Size(476, 186);
            groupBox1.TabIndex = 18;
            groupBox1.TabStop = false;
            groupBox1.Text = "添加数据";
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(9F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(661, 484);
            Controls.Add(groupBox1);
            Controls.Add(Form);
            Controls.Add(button2);
            Controls.Add(button1);
            Controls.Add(TimeEnd);
            Controls.Add(TimeStart);
            Controls.Add(label2);
            Controls.Add(label1);
            Margin = new Padding(4);
            Name = "Form1";
            Text = "Form1";
            Load += Form1_Load;
            ((System.ComponentModel.ISupportInitialize)Form).EndInit();
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private Label label2;
        private DateTimePicker TimeStart;
        private DateTimePicker TimeEnd;
        private Button button1;
        private Button button2;
        private DataGridView Form;
        private Label label3;
        private Label label4;
        private Label label5;
        private Label label6;
        private Label label7;
        private TextBox Lat;
        private TextBox Lon;
        private TextBox Course;
        private TextBox Speed;
        private DateTimePicker TimeAdd;
        private Button button3;
        private GroupBox groupBox1;
    }
}
