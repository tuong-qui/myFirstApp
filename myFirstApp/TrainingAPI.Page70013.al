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
}