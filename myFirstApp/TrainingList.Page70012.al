page 70012 "Training Course List"
{
    Caption = 'Quinn''s List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Training Table";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Name"; Rec."Name")
                {
                    ApplicationArea = All;
                }

                field("Vendor No."; Rec."Vendor No.")
                {
                    ApplicationArea = All;
                }

                field("Payment Term"; Rec."Payment Term")
                {
                    ApplicationArea = All;
                }

                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                }

                field("My Fee"; Rec."My Fee")
                {
                    ApplicationArea = All;
                }

                field("Active"; Rec."Active")
                {
                    ApplicationArea = All;
                }

                field("Status"; Rec."Status")
                {
                    ApplicationArea = All;
                }



            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }
}
