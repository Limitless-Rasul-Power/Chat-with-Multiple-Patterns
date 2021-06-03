using Chat_with_Mediator_Pattern.ViewModels;
using System.Windows;

namespace Chat_with_Mediator_Pattern.Views
{
    /// <summary>
    /// Interaction logic for StartWindow.xaml
    /// </summary>
    public partial class StartWindow : Window
    {
        public StartWindow()
        {
            InitializeComponent();
            TxtBxNickname.Focus();
            this.DataContext = new StartViewModel();
        }
    }
}