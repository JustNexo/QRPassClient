﻿#pragma checksum "..\..\..\..\UserControls\HistoryTable.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "A5DB54038978C052E70C1064AA3144009DAB5E47"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using QRPassWPF.Model;
using QRPassWPF.UserControls;
using QRPassWPF.ViewModel;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace QRPassWPF.UserControls {
    
    
    /// <summary>
    /// HistoryTable
    /// </summary>
    public partial class HistoryTable : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 332 "..\..\..\..\UserControls\HistoryTable.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView listView;
        
        #line default
        #line hidden
        
        
        #line 337 "..\..\..\..\UserControls\HistoryTable.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox userIdFilter;
        
        #line default
        #line hidden
        
        
        #line 339 "..\..\..\..\UserControls\HistoryTable.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox fullNameFilter;
        
        #line default
        #line hidden
        
        
        #line 342 "..\..\..\..\UserControls\HistoryTable.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBoxItem @null;
        
        #line default
        #line hidden
        
        
        #line 343 "..\..\..\..\UserControls\HistoryTable.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBoxItem exitfromobj;
        
        #line default
        #line hidden
        
        
        #line 344 "..\..\..\..\UserControls\HistoryTable.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBoxItem entertoobj;
        
        #line default
        #line hidden
        
        
        #line 345 "..\..\..\..\UserControls\HistoryTable.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBoxItem quarantine;
        
        #line default
        #line hidden
        
        
        #line 346 "..\..\..\..\UserControls\HistoryTable.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBoxItem exitnotregistred;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.8.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/QRPassWPF;component/usercontrols/historytable.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\UserControls\HistoryTable.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.8.0")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal System.Delegate _CreateDelegate(System.Type delegateType, string handler) {
            return System.Delegate.CreateDelegate(delegateType, this, handler);
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.8.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.listView = ((System.Windows.Controls.ListView)(target));
            return;
            case 2:
            this.userIdFilter = ((System.Windows.Controls.TextBox)(target));
            return;
            case 3:
            this.fullNameFilter = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.@null = ((System.Windows.Controls.ComboBoxItem)(target));
            return;
            case 5:
            this.exitfromobj = ((System.Windows.Controls.ComboBoxItem)(target));
            return;
            case 6:
            this.entertoobj = ((System.Windows.Controls.ComboBoxItem)(target));
            return;
            case 7:
            this.quarantine = ((System.Windows.Controls.ComboBoxItem)(target));
            return;
            case 8:
            this.exitnotregistred = ((System.Windows.Controls.ComboBoxItem)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

