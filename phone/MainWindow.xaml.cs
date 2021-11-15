using System;
using System.Windows;
using System.Windows.Input;
using System.Data.SQLite;
using System.Data;
using System.Text.RegularExpressions;
using System.Globalization;


namespace phone

{
    public class MyTable
    {
                
        public string ID { get; set; }
        public string STRUCT{ get; set; }
        public string FIO { get; set; }
        public string VTS{ get; set; }
        public string CITY { get; set; }
        public string MOBAIL { get; set; }
    }

    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        static SQLiteConnection connection;

        

        public MainWindow()
        {
            InitializeComponent();
            


        }

        public static string FirstLetterToUpper(string str)
        {
            if (str.Length > 0) { return Char.ToUpper(str[0]) + str.Substring(1); }
            return "";
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void turn_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void Window_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            searchData($"SELECT * FROM List WHERE Fio LIKE '%{edtSearch.Text.ToUpper()}%' OR Name LIKE '%{edtSearch.Text.ToUpper()}%'  OR Vts LIKE '%{edtSearch.Text.ToUpper()}%'");

        }

        public void searchData(string patt)
        {
            grid.Items.Clear();

            connection = new SQLiteConnection("Data Source=" + "data.db" + ";Version=3; FailIfMissing=False");
            connection.Open();
            
            DataTable data = new DataTable();
            SQLiteDataAdapter adapter = new SQLiteDataAdapter(patt, connection);
            adapter.Fill(data);
            txt.Content =$"Найдено записей: {data.Rows.Count}";
            var pattern = @"\d-\d{3}-\d{3}-\d{2}-\d{2}";
            Regex re = new Regex(pattern);

            var i = 1;
            var textInfo = new CultureInfo("ru-RU").TextInfo;

            foreach (DataRow row in data.Rows)
            {
                var vID = i; //row.Field<long>("id");
                var vMOBAIL = String.Join(" ", re.Matches(row.Field<string>("Fio")));
                var vFIO = textInfo.ToTitleCase(row.Field<string>("Fio").ToUpper().Split("С.")[0].ToLower());
                var vNAME = row.Field<string>("Name");
                var vVTS = row.Field<string>("Vts");
                var vCITY = row.Field<string>("City");


                grid.Items.Add(new MyTable() { ID = vID.ToString(), STRUCT = vNAME, FIO = vFIO, MOBAIL = vMOBAIL, VTS = vVTS, CITY = vCITY });

                i += 1;
              

            }
            
            connection.Close();

        }

        private void main_window_Loaded(object sender, RoutedEventArgs e)
        {
            searchData("SELECT Id, Name, Fio, Vts, City  FROM List");
        }

        private void edtSearch_KeyUp(object sender, KeyEventArgs e)
        {
            btnSearch_Click(null, null);
        }
    }
}