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
            action(ShowAPIRequests)
            {
                Caption = 'Show GET / POST Requests';
                ApplicationArea = All;
                Image = Web;
                ToolTip = 'Show the Training API endpoint for the current company and a sample POST body.';

                trigger OnAction()
                var
                    CurrentCompany: Record Company;
                    Endpoint: Text;
                    SampleBody: JsonObject;
                    SampleBodyText: Text;
                begin
                    CurrentCompany.Get(CompanyName());
                    Endpoint :=
                        'https://api.businesscentral.dynamics.com/v2.0/' +
                        '19f16416-6c91-4c4b-8d75-43a20b8e8f13/June9/' +
                        'api/quinn/training/v1.0/companies(' +
                        LowerCase(DelChr(Format(CurrentCompany.SystemId), '=', '{}')) +
                        ')/trainingCourses';

                    SampleBody.Add('number', 'TR002');
                    SampleBody.Add('name', 'Training created through API');
                    SampleBody.WriteTo(SampleBodyText);

                    Message(
                        'Company: %1\GET %2\POST %2\Content-Type: application/json\Body: %3\Both requests require a valid Bearer token. No HTTP request has been sent. Use an unused number for POST.',
                        CurrentCompany.Name, Endpoint, SampleBodyText);
                end;
            }
        }
    }
}
