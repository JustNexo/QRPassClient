using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Net;
using System.Runtime.CompilerServices;
using System.Security;
using System.Security.Principal;
using System.Threading;
using System.Windows;
using System.Windows.Input;
using QRPassClientApi.Api;

namespace QRPassWPF.ViewModel;

public class LoginViewModel : ViewModelBase
{
    private string _login;
        private string _password;
        private string _errorMessage;
        private bool _isViewVisible = true;
        private bool _isSelected;

        private QRPassClient _client = new("");
        
        //Properties
        public string Login
        {
            get => _login;
            set
            {
                _login = value;
                OnPropertyChanged(nameof(Login));
            }
        }
        public bool IsSelected
        { 
            get => _isSelected;
            set
            {                
                _isSelected = value;           
                OnPropertyChanged(nameof(IsSelected));
            }
        }
        public string Password
        {
            get => _password;
            set
            {
                _password = value;
                OnPropertyChanged(nameof(Password));
            }
        }
        public string ErrorMessage
        {
            get => _errorMessage;
            set
            {
                _errorMessage = value;
                OnPropertyChanged(nameof(ErrorMessage));
            }
        }
        public bool IsViewVisible
        {
            get => _isViewVisible;
            set
            {
                _isViewVisible = value;
                OnPropertyChanged(nameof(IsViewVisible));
            }
        }
        //-> Commands
        public ICommand LoginCommand { get; }
        //Constructor
        public LoginViewModel()
        {
            LoginCommand = new ViewModelCommand(ExecuteLoginCommand, CanExecuteLoginCommand);
        }
        private bool CanExecuteLoginCommand(object obj)
        {
            bool validData;
            if (string.IsNullOrWhiteSpace(Login) || Login.Length < 3 ||
                Password == null || Password.Length < 3)
                validData = false;
            else
                validData = true;
            return validData;
        }
        private async void ExecuteLoginCommand(object obj)
        {
            var user = await _client.LoginAsync(Login, Password);
            
            if (string.IsNullOrEmpty(user.Token))
            {
                Thread.CurrentPrincipal = new GenericPrincipal(
                    new GenericIdentity(Login), null);
                IsViewVisible = false;
            }
            else
            {
                ErrorMessage = "* Invalid username or password";
            }
        }


}