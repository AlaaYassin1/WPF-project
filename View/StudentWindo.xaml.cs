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
    /// Interaction logic for StudentWindo.xaml
    /// </summary>
    public partial class StudentWindo : Window
    {
        public StudentWindo()
        {
            InitializeComponent();
            coachdatagrd.ItemsSource = CoachHelper.GetCoach();

        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            List<Coach> coachess = CoachHelper.GetCoach();
            List<Coach> Coaches = new List<Coach>();



            for (int i = 0; i < coachess.Count; i++)
            {
                if (
                      coachess[i].Cname == txtserh.Text.ToString())

                {
                    Coaches.Add(coachess[i]);
                }
            }
            if (string.IsNullOrEmpty(txtserh.Text.ToString()))
            {
                coachdatagrd.ItemsSource = coachess;
            }
            else
            {
                coachdatagrd.ItemsSource = Coaches;

            }

          



        }
        private void coachdatagrd_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            Coach coach = new Coach();
            coach = (Coach)coachdatagrd.SelectedItem;
            EditStudent es = new EditStudent();
            try
            {
                es.Cid.Text = coach.Cid.ToString();

                es.CName.Text = coach.Cname.ToString();
                if (coach.gender == "Male")
                {
                    es.genderM.IsChecked = true;

                }
                else if (coach.gender == "Female")
                {
                    es.genderF.IsChecked = true;

                }

                es.DOB.Text = coach.DateOfBirth.ToString();
                es.Phone.Text = coach.phone.ToString();
                es.Experience.Text = coach.Experience.ToString();
                es.Address.Text = coach.Address.ToString();
                es.password.Text = coach.Password.ToString();


                es.Show();

            }
            catch (Exception ex) { MessageBox.Show(ex.Message); }
          




            




        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Stuform stuform = new Stuform();
           
            stuform.Show();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            try
            {

                Coach coach = (Coach)coachdatagrd.SelectedItem;
                int ID = coach.Cid;
                if (ID == 0)
                {
                    MessageBox.Show("You Selected Empty Row,try again");
                    throw new Exception();

                }
                CoachHelper.deleteCoach(ID);

                coachdatagrd.ItemsSource = CoachHelper.GetCoach();
                MessageBox.Show("Deleted");
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }


         

        }

        private void txtserh_TextChanged(object sender, TextChangedEventArgs e)
        {
            List<Coach> coachess = CoachHelper.GetCoach();
            List<Coach> Coaches = new List<Coach>();



            for (int i = 0; i < coachess.Count; i++)
            {
                if (coachess[i].Cname.ToString().Contains(txtserh.Text.ToString()))
                {
                    Coaches.Add(coachess[i]);
                }
            }
            if (string.IsNullOrEmpty(txtserh.Text.ToString()))
            {
                coachdatagrd.ItemsSource = coachess;
            }
            else
            {
                coachdatagrd.ItemsSource = Coaches;

            }


        }

        private void RadioButton_Checked(object sender, RoutedEventArgs e)
        {
            MimberShipWindo mim = new MimberShipWindo();
            mim.Show();
        }
    }
}
public class Coach
{
    public int Cid { get; set; }
    public string Cname { get; set; }

    public string gender { get; set; }
    public string DateOfBirth { get; set; }
    public string phone { get; set; }
    public string Experience { get; set; }
    public string Address { get; set; }
    public string Password { get; set; }
}

