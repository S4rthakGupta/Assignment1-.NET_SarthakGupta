using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

    public class CartList
    {
        private List<Item> Items;

        public CartList()
        {
            Items = new List<Item>();
        }

        public int Count
        {
            get { return Items.Count; }
        }

        public Item this[int index]
        {
            get { return Items[index]; }
            set { Items[index] = value; }
        }

        public Item this[string id]
        {
            get
            {
                foreach (Item c in Items)
                    if (c.Book.BookID.ToString() == id) return c;
                return null;
            }
        }

        public static CartList GetCartOrCreateIt()
        {
            CartList cart = (CartList)HttpContext.Current.Session["Cart"];
            if (cart == null)
                HttpContext.Current.Session["Cart"] = new CartList();
            return (CartList)HttpContext.Current.Session["Cart"];
        }

        public void AddItem(Book book, int quantity)
        {
            Item c = new Item(book, quantity);
            Items.Add(c);
        }

        public void RemoveAt(int index)
        {
            Items.RemoveAt(index);
        }

        public void Clear()
        {
            Items.Clear();
        }
    }
