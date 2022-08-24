///AMKE 09-08-2022 
///Added Completely Allocated field

pageextension 50009 "Sales Return Order Extensions" extends "Sales Return Order"
{
    layout
    {
        addafter(Status)
        {
            field(Substatus; Substatus)
            {

            }
            field("Customer Comment Text"; "Customer Comment Text")
            {

            }
            // field("Completely Allocated"; "Completely Allocated")
            // {

            // }
        }
        addafter(SalesLines)
        {
            part(Comments; "Sales Order Comment ListPart")
            {
                Enabled = "No." <> '';
                SubPageLink = "Document Type" = field("Document Type"), "No." = field("No.");
            }
        }
    }
}