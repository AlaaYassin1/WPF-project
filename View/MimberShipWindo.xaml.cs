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
    /// Interaction logic for MimberShipWindo.xaml
    /// </summary>
    public partial class MimberShipWindo : Window
    {
        public MimberShipWindo()
        {
            InitializeComponent();
            memberdatagrd.ItemsSource = MemberShipHelper.GetallMemberShips();
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            List<allMemberShips> coachess = MemberShipHelper.GetallMemberShips();
            List<allMemberShips> Coaches = new List<allMemberShips>();



            for (int i = 0; i < coachess.Count; i++)
            {
                if (
                      coachess[i].shName == txtserh.Text.ToString())

                {
                    Coaches.Add(coachess[i]);
                }
            }
            if (string.IsNullOrEmpty(txtserh.Text.ToString()))
            {
                memberdatagrd.ItemsSource = coachess;
            }
            else
            {
                memberdatagrd.ItemsSource = Coaches;

            }





        }
        private void memberdatagrd_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
        
            allMemberShips coach = new allMemberShips();
            coach = (allMemberShips)memberdatagrd.SelectedItem;
            EditMember es = new EditMember();
            try
            {
                es.shid.Text = coach.shId.ToString();
                es.comboname.SelectedValue = coach.shName.ToString();
                // es.shname.Text = coach.shName.ToString();

                es.duration.Text = coach.Duration.ToString();
                es.goal.Text = coach.Goal.ToString();
                es.cost.Text = coach.Cost.ToString();
                es.Show();
            }
          catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }



        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            MemberForm m = new MemberForm();

            m.Show();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            try
            {

                allMemberShips coach = (allMemberShips)memberdatagrd.SelectedItem;
                int ID = coach.shId;
                if (ID == 0)
                {
                    MessageBox.Show("You Selected Empty Row,try again");
                    throw new Exception();

                }
                MemberShipHelper.deleteMemberShips(ID);

                memberdatagrd.ItemsSource = MemberShipHelper.GetallMemberShips();
                MessageBox.Show("Deleted");
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }


          

        }

        private void txtserh_TextChanged(object sender, TextChangedEventArgs e)
        {
            List<allMemberShips> coachess = MemberShipHelper.GetallMemberShips();
            List<allMemberShips> Coaches = new List<allMemberShips>();



            for (int i = 0; i < coachess.Count; i++)
            {
                if (coachess[i].shName.ToString().Contains(txtserh.Text.ToString()))
                {
                    Coaches.Add(coachess[i]);
                }
            }
            if (string.IsNullOrEmpty(txtserh.Text.ToString()))
            {
                memberdatagrd.ItemsSource = coachess;
            }
            else
            {
                memberdatagrd.ItemsSource = Coaches;

            }


        }

        private void RadioButton_Checked(object sender, RoutedEventArgs e)
        {
            StudentWindo s = new StudentWindo();
            s.Show();
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            EditMember ed = new EditMember();
            ed.Show();
        }

      
    }
}
public class allMemberShips
{
    public int shId { get; set; }
    public string shName { get; set; }
    public string Duration { get; set; }
    public string Goal { get; set; }
    public string Cost { get; set; }


}