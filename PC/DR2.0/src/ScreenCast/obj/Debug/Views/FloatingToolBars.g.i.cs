﻿#pragma checksum "..\..\..\Views\FloatingToolBars.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "E994B2144002460CD1461AB33FAE0AF5"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34209
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using ScreenCast.Controls;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms.Integration;
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


namespace ScreenCast.Views {
    
    
    /// <summary>
    /// FloatingToolBars
    /// </summary>
    public partial class FloatingToolBars : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 11 "..\..\..\Views\FloatingToolBars.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel ftbname;
        
        #line default
        #line hidden
        
        
        #line 14 "..\..\..\Views\FloatingToolBars.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal ScreenCast.Controls.ImageButton menuclick;
        
        #line default
        #line hidden
        
        
        #line 17 "..\..\..\Views\FloatingToolBars.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Primitives.Popup PopupMenu;
        
        #line default
        #line hidden
        
        
        #line 28 "..\..\..\Views\FloatingToolBars.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.CheckBox CheckBoxAutoRun;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\..\Views\FloatingToolBars.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.CheckBox CheckBoxShowFirstPage;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/ScreenCast;component/views/floatingtoolbars.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Views\FloatingToolBars.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal System.Delegate _CreateDelegate(System.Type delegateType, string handler) {
            return System.Delegate.CreateDelegate(delegateType, this, handler);
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.ftbname = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 2:
            this.menuclick = ((ScreenCast.Controls.ImageButton)(target));
            return;
            case 3:
            this.PopupMenu = ((System.Windows.Controls.Primitives.Popup)(target));
            return;
            case 4:
            this.CheckBoxAutoRun = ((System.Windows.Controls.CheckBox)(target));
            
            #line 28 "..\..\..\Views\FloatingToolBars.xaml"
            this.CheckBoxAutoRun.Click += new System.Windows.RoutedEventHandler(this.OnAutoRunClick);
            
            #line default
            #line hidden
            return;
            case 5:
            this.CheckBoxShowFirstPage = ((System.Windows.Controls.CheckBox)(target));
            
            #line 29 "..\..\..\Views\FloatingToolBars.xaml"
            this.CheckBoxShowFirstPage.Click += new System.Windows.RoutedEventHandler(this.OnCheckBoxShowFirstPage);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

