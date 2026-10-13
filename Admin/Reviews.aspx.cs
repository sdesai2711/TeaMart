using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeaMart.Admin
{
    [Serializable]
    public class ReviewItem
    {
        public int Id { get; set; }
        public string Email { get; set; }
        public int Rating { get; set; }
        public string Review { get; set; }
    }

    public partial class Reviews : System.Web.UI.Page
    {
        private List<ReviewItem> ReviewList
        {
            get
            {
                if (Session["ReviewList"] == null)
                {
                    // ફોટા મુજબ મેન્યુઅલ સ્ટેટિક ડેટા
                    var list = new List<ReviewItem>
                    {
                        new ReviewItem { Id = 1, Email = "shreyughodasara76@gmail.com", Rating = 5, Review = "hello" }
                    };
                    Session["ReviewList"] = list;
                }
                return (List<ReviewItem>)Session["ReviewList"];
            }
            set
            {
                Session["ReviewList"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindReviews();
            }
        }

        private void BindReviews()
        {
            var list = ReviewList;

            if (list != null && list.Count > 0)
            {
                rptReviews.DataSource = list;
                rptReviews.DataBind();
                rptReviews.Visible = true;
                phNoData.Visible = false;

                // એવરેજ રેટિંગ ગણતરી (દા.ત. 5.0)
                double avg = list.Average(r => r.Rating);
                lblAverageRating.Text = avg.ToString("0.0");
            }
            else
            {
                rptReviews.Visible = false;
                phNoData.Visible = true;
                lblAverageRating.Text = "0.0";
            }
        }

        protected string RenderStars(int rating)
        {
            StringBuilder sb = new StringBuilder();
            for (int i = 1; i <= 5; i++)
            {
                if (i <= rating)
                {
                    sb.Append("<span class='star filled'>★</span>");
                }
                else
                {
                    sb.Append("<span class='star'>★</span>");
                }
            }
            return sb.ToString();
        }
    }
}