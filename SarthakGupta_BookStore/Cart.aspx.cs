using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SarthakGupta_BookStore
{
    public partial class Cart : System.Web.UI.Page
    {
        // Create variable to hold cart address in session
        private CartList cart;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve cart object from session state on every postback
            cart = CartList.GetCartOrCreateIt();

            // On initial page load, add cart items to list control (if it is not postBack)
            if (!IsPostBack)
                this.DisplayCart();
        }

        // DisplayCart method to show items in the list control
        private void DisplayCart()
        {
            // Remove all current items from list control
            ShoppingCartListBox.Items.Clear();

            // Loop through the cart and add each item's display value to the list
            for (int i = 0; i < cart.Count; i++)
            {
                ShoppingCartListBox.Items.Add(cart[i].Display());
            }
        }

        // Button click event to remove selected items from the cart
        protected void btnRemove_Click(object sender, EventArgs e)
        {
            // If the cart contains items and the user has selected an item...
            if (cart.Count > 0)
            {
                if (ShoppingCartListBox.SelectedIndex > -1)
                {
                    // Remove the selected item from the cart and re-display the cart
                    cart.RemoveAt(ShoppingCartListBox.SelectedIndex);
                    this.DisplayCart();
                }
                else
                {
                    // If no item is selected, show a message
                    lblMessage.Text = "Please select the item to remove.";
                }
            }
        }

        // Button click event to empty the cart
        protected void EmptyCartButton_Click(object sender, EventArgs e)
        {
            // If the cart has items, clear both the cart and the list control
            if (cart.Count > 0)
            {
                cart.Clear();
                ShoppingCartListBox.Items.Clear();
            }
        }
    }
}