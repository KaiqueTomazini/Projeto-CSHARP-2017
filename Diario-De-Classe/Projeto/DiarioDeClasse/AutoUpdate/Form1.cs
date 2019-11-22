using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using Ionic.Zip;

namespace AutoUpdate
{
    public partial class Form1 : Form
    {
        WebClient webClient;
        Stopwatch sw = new Stopwatch();
        

        public void DownloadFile(string urlAddress)
        {
            using (webClient = new WebClient())
            {
                webClient.DownloadFileCompleted += new AsyncCompletedEventHandler(Completed);
                webClient.DownloadProgressChanged += new DownloadProgressChangedEventHandler(ProgressChanged);
                Uri URL = urlAddress.StartsWith("http://", StringComparison.OrdinalIgnoreCase) ? new Uri(urlAddress) : new Uri("http://" + urlAddress);
                sw.Start();

                try
                {
                    webClient.DownloadFileAsync(URL, "DiarioDeClasse.exe");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }
        private void ProgressChanged(object sender, DownloadProgressChangedEventArgs e)
        {
            lblVelocidade.Text = string.Format("{0} kb/s", (e.BytesReceived / 1024d / sw.Elapsed.TotalSeconds).ToString("0.00"));
            progressBar.Value = e.ProgressPercentage;
            lblPorcentagem.Text = e.ProgressPercentage.ToString() + "%";
            labelBaixado.Text = string.Format("{0} MB's / {1} MB's",
                (e.BytesReceived / 1024d / 1024d).ToString("0.00"),
                (e.TotalBytesToReceive / 1024d / 1024d).ToString("0.00"));
            if (progressBar.Value == 100)
            {
                Process.Start(@"DiarioDeClasse.exe");
                Environment.Exit(1);
            }
        }

        private void Completed(object sender, AsyncCompletedEventArgs e)
        {
            if (e.Error != null)
            {
                string error = e.Error.ToString();
                MessageBox.Show(error);
                return;
            }
            sw.Reset();
            if (e.Cancelled == true)
            {
                MessageBox.Show("Download has been canceled.");
            }
        }

        public Form1()
        {
            InitializeComponent();
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(174)))), ((int)(((byte)(206)))));
            labelBaixado.Text = "";
            lblPorcentagem.Text = "";
            lblVelocidade.Text = "";
            DownloadFile(@"http://www.dropbox.com/s/peozphwq247yvvl/DiarioDeClasse.exe?dl=1");
        }

        private void labelDownloaded_Click(object sender, EventArgs e)
        {

        }
    }
}
