using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
namespace GrapeCity.ActiveReports.Samples.WPFViewer
{
    /// <summary>
    /// 
    /// </summary>
    public partial class MainWindow : Window
    {
        string CurrentFileLocation = System.AppDomain.CurrentDomain.BaseDirectory + @"Reports\";
        public MainWindow()
        {
            InitializeComponent();
        }
        /// <summary>
        /// >Preview Button Click- Load selected report on click.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnPreview_Click(object sender, RoutedEventArgs e)
        {
            ComboBoxItem _report = (ComboBoxItem)CmbListBox.SelectedItem;
            //If the 'Add Custom Button' checkbox is checked load custom menu of Wpf Viewer 
                if (chkCustomButton.IsChecked == true)
                {
                    string langDictPath = "DefaultWPFViewerTemplates.xaml";
                    Uri langDictUri = new Uri(langDictPath, UriKind.Relative);
                 ResourceTheme.Source = langDictUri;
                }
                //If the 'Add Custom Button' checkbox is not checked, clear the resource dictionary values.
                    if (chkCustomButton.IsChecked == false)
                    {
                        ResourceTheme.Clear();
                    }
                    //Load Selected Report
            switch (_report.Content.ToString())
            {
                case "Catalog.rdlx":
                    ReportViewer.LoadDocument(CurrentFileLocation + _report.Content.ToString());
                    break;
                case "EmployeeSales.rdlx":
                    ReportViewer.LoadDocument(CurrentFileLocation + _report.Content.ToString());
                    break;
                case "Invoice1.rdlx":
                    ReportViewer.LoadDocument(CurrentFileLocation + _report.Content.ToString());
                    break;
                case "Invoice2.rpx":
                    ReportViewer.LoadDocument(CurrentFileLocation + _report.Content.ToString());
                    break;
                case "LabelReport.rpx":
                    ReportViewer.LoadDocument(CurrentFileLocation + _report.Content.ToString());
                    break;
                case "PaymentSlip.rpx":
                    ReportViewer.LoadDocument(CurrentFileLocation + _report.Content.ToString());
                    break;
            }
        }
        /// <summary>
        ///In the SelectionChanged event of the combo box, disable 'Add Custom Button' checkbox and 'Preview' button, when no report is selected.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CmbListBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if ( CmbListBox.SelectedIndex ==0)
            {
                if (chkCustomButton != null)
                {
                    chkCustomButton.IsEnabled = false;
                }
                btnPreview.IsEnabled = false;
            }
            else
            {
                chkCustomButton.IsEnabled = true;
                btnPreview.IsEnabled = true;
            }
        }
    }
}
