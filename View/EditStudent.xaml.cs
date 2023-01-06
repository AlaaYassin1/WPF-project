using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace WPFLibrary.View
{
    /// <summary>
    /// Interaction logic for EditStudent.xaml
    /// </summary>
    public partial class EditStudent : Window
    {
        public EditStudent()
        {
            InitializeComponent();
            // cmboxP.ItemsSource = StudentHelper.allStudent();
            StudentWindo sw = new StudentWindo();

            sw.coachdatagrd.ItemsSource = CoachHelper.GetCoach();


        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            StudentWindo sw= new StudentWindo();
            Coach coach = new Coach();
            coach.Cid = Convert.ToInt32(Cid.Text);
            coach.Cname = CName.Text;

            //  coach.DateOfBirth = Convert.ToDateTime(DOB.Text);

            if ((bool)genderF.IsChecked)
            {
                coach.gender = "Female";

            }
            else if ((bool)genderM.IsChecked)
            {
                coach.gender = "Male";
            }

            coach.DateOfBirth = DOB.SelectedDate.ToString();
            coach.phone = Phone.Text;
            coach.Experience = Experience.Text;
            coach.Address = Address.Text;
            coach.Password = password.Text;


            if (CoachHelper.updateDepartment(coach)>0)
            {
                MessageBox.Show("Updated");
                sw.coachdatagrd.ItemsSource = CoachHelper.GetCoach();


            }
            else
            {
                MessageBox.Show("Not Success");


            }
            //student.Class = cmboxP.SelectedItem.ToString();
            //cmboxP.ItemsSource = StudentHelper.allStudent();


            this.Close();
        }

     
    }
}
