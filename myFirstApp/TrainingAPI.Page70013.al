page 70013 "Training API"
{
    PageType = API;
    APIPublisher = 'quinn';
    APIGroup = 'training';
    APIVersion = 'v1.0';
    EntityName = 'trainingCourse';
    EntitySetName = 'trainingCourses';

    SourceTable = "Training Table";
    ODataKeyFields = SystemId;
    DelayedInsert = true;
    InsertAllowed = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(id; Rec.SystemId)
                {
                    Editable = false;
                }
                field(number; Rec."No.")
                {
                }
                field(name; Rec.Name)
                {
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        HandleReadRecord();
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        ValidateNewTrainingCourse();
        // Let the API framework insert the record; do not call Rec.Insert here.
        exit(true);
    end;

    local procedure HandleReadRecord()
    begin
        // Read hook: place a breakpoint here or add read-only calculations.
        // This is a record lifecycle hook, not an exclusive HTTP GET handler.
    end;

    local procedure ValidateNewTrainingCourse()
    begin
        Rec.TestField("No.");
    end;
}
