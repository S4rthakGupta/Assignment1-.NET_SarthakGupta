using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


/// <summary>
/// Represents an item in the shopping cart, including a book and its quantity.
/// </summary>
public class Item
{
    public Item() { }

    public Item(Book book, int quantity)
    {
        this.Book = book;
        this.Quantity = quantity;
    }


    /// <summary>
    /// Gets or sets the book associated with the item.
    /// </summary>
    public Book Book { get; set; }
    public int Quantity { get; set; }

    public void AddQuantity(int quantity)
    {
        this.Quantity += quantity;
    }


    /// <summary>
    /// Returns a string representation of the item for display purposes.
    /// </summary>
    public string Display()
    {
        string displayString = string.Format("{0} ({1} at {2})",
            Book.Title,
            Quantity.ToString(),
            Book.Price.ToString("c")
        );
        return displayString;
    }
}
