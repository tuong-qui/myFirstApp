table 70011 "Training Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'No.';

        }

        field(2; "Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Name';
        }

        field(3; "Vendor No."; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Vendor No.';
            tableRelation = Vendor."No." where(Blocked = const(" "));
        }

        field(4; "Payment Term"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Payment Term';
            TableRelation = "Payment Terms"."Code";
        }

        field(5; "Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date';
        }

        field(6; "My Fee"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Fee';
        }

        field(7; "Active"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Active';
        }

        field(8; "Status"; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
            OptionMembers = " ","Not Started","In Progress","Completed";
            OptionCaption = ' ,Not Started,In Progress,Completed';
        }

        field(9; "Vendor Name"; Text[100])
        {
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Lookup(Vendor.Name WHERE("No." = FIELD("Vendor No.")));
        }


    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}
