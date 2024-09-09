using Microsoft.Win32;
using System.IO;
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

namespace DirectoryComparer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        ListBoxModel myModel;

        public MainWindow()
        {
            InitializeComponent();
        }
        private void btnOpenFolder_Click(object sender, RoutedEventArgs e)
        {
            var folderDialog = new OpenFolderDialog
            {
                // Set options here
            };

            if (folderDialog.ShowDialog() == true)
            {
                List<ListBoxModel> lt = new List<ListBoxModel>();
                string[] dicFileList = Directory.GetFiles(folderDialog.FolderName, "*.*", SearchOption.TopDirectoryOnly);
                foreach (string element in dicFileList)
                {
                    myModel = new ListBoxModel();
                    myModel.Name = System.IO.Path.GetFileName(element);
                    lt.Add(myModel);
                }

                if ((sender as Button).Name == "OpenFolderLeftSide")
                {
                    myListViewLeftSide.ItemsSource = lt;
                    pathItemsLeftSide.Content = "Path of items: " + folderDialog.FolderName;
                    numberItemsLeftSide.Content = "Number of items: " + myListViewLeftSide.Items.Count;
                }
                else if ((sender as Button).Name == "OpenFolderMiddle")
                {
                    myListViewMiddle.ItemsSource = lt;
                    pathItemsMiddle.Content = "Path of items: " + folderDialog.FolderName;
                    numberItemsMiddle.Content = "Number of items: " + myListViewMiddle.Items.Count;
                }
            }
        }

        private void btnDifference_Click(object sender, RoutedEventArgs e)
        {
            List<ListBoxModel> filteredList = new List<ListBoxModel>();

            // check for items on the left side missing on the right side
            foreach (ListBoxModel itemLeft in myListViewLeftSide.Items)
            {
                bool isInList = false;
                ListBoxModel addItemMiddle = null;
                foreach (ListBoxModel itemMiddle in myListViewMiddle.Items)
                {
                    addItemMiddle = itemMiddle;
                    if (itemLeft.Name == itemMiddle.Name)
                    {
                        isInList = true;
                        break;
                    }
                }
                if (!isInList)
                    filteredList.Add(addItemMiddle);
            }

            // adding items available only on the right side
            foreach (ListBoxModel itemMiddle in myListViewMiddle.Items)
            {
                bool isInList = false;
                ListBoxModel addItemMiddle = null;
                foreach (ListBoxModel itemLeft in myListViewLeftSide.Items)
                {
                    addItemMiddle = itemMiddle;
                    if (itemLeft.Name == itemMiddle.Name)
                    {
                        isInList = true;
                        break;
                    }
                }
                if (!isInList)
                    filteredList.Add(addItemMiddle);
            }

            myListViewCompareResult.ItemsSource = filteredList;
            numberItemsCompareResult.Content = "Number of items: " + myListViewCompareResult.Items.Count;
        }
    }
    public class ListBoxModel
    {
        public string Name { get; set; }
    }
}