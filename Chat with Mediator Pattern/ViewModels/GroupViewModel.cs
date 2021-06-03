using Chat_with_Mediator_Pattern.Command;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace Chat_with_Mediator_Pattern.ViewModels
{
    public class GroupViewModel
    {
        public GroupViewModel(StartViewModel startViewModel, string nickname)
        {
            StartViewModel = startViewModel;
            Nickname = nickname;
            SendCommand = new RelayCommand(SendClick);
            LeaveCommand = new RelayCommand(LeaveClick);
            CloseCommand = new RelayCommand(CloseClick);
        }

        public StartViewModel StartViewModel { get; set; }
        public string Nickname { get; set; }
        public RelayCommand SendCommand { get; set; }
        public RelayCommand LeaveCommand { get; set; }
        public RelayCommand CloseCommand { get; set; }

        private void SendClick(object parameter = null)
        {
            if (parameter is TextBox textBox && string.IsNullOrWhiteSpace(textBox.Text) == false)
            {
                StartViewModel.NotifyAllSubscribers($"{Nickname} : {textBox.Text}");
                textBox.Text = default;
            }
        }

        private void LeaveClick(object parameter = null)
        {            
            if (parameter is Window window)
            {                
                window.Close();
            }
        }

        private void CloseClick(object parameter = null)
        {
            ExitUser();
        }

        private void ExitUser()
        {
            StartViewModel.Unsubscribe(this);
            StartViewModel.NotifyAllSubscribers($"{Nickname} : Left");
        }

    }
}