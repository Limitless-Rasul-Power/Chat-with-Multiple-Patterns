using Chat_with_Mediator_Pattern.Command;
using Chat_with_Mediator_Pattern.Views;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Controls;

namespace Chat_with_Mediator_Pattern.ViewModels
{
    public class StartViewModel : INotifyPropertyChanged
    {
        private string _nickname;
        private readonly List<GroupViewModel> _subscribers = new List<GroupViewModel>();
        private readonly List<ListBox> _listBoxes = new List<ListBox>();
        public event PropertyChangedEventHandler PropertyChanged;

        public StartViewModel()
        {
            JoinCommand = new RelayCommand(JoinClick, delegate { return string.IsNullOrWhiteSpace(Nickname) == false; });
        }

        public ObservableCollection<string> Messages { get; set; } = new ObservableCollection<string>();
        public RelayCommand JoinCommand { get; set; }

        public string Nickname
        {
            get { return _nickname; }
            set { _nickname = value; OnPropertyChanged(); }
        }

        private void JoinClick(object parameter = null)
        {
            Subscribe();
            NotifyAllSubscribers($"{Nickname} : Joined");
            Nickname = default;
        }

        public void NotifyAllSubscribers(string message)
        {
            Messages.Add(message);

            for (int i = 0; i < _listBoxes.Count; i++)
            {
                _listBoxes[i].ScrollIntoView(_listBoxes[i].Items[_listBoxes[i].Items.Count - 1]);
            }
        }

        public void Subscribe()
        {
            _subscribers.Add(new GroupViewModel(this, Nickname));

            GroupView groupView = new GroupView
            {
                DataContext = _subscribers[_subscribers.Count - 1],
            };

            _listBoxes.Add(groupView.LstBxChat);            

            groupView.Show();
        }

        public void Unsubscribe(GroupViewModel subscriber)
        {
            _subscribers.Remove(subscriber);
        }

        private void OnPropertyChanged([CallerMemberName] string name = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }


    }
}
