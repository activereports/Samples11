using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Input;
using System.Windows;
namespace GrapeCity.ActiveReports.Samples.WPFViewer
{
    class MyCommand : ICommand
    {
        public bool CanExecute(object parameter)
        {
            return true;
        }
        public void Execute(object parameter)
        {
            MessageBox.Show("GrapeCity is the world's largest component vendor.", "About Us", MessageBoxButton.OK);          
        }
   public event EventHandler CanExecuteChanged { add { } remove { } }
    }
}
