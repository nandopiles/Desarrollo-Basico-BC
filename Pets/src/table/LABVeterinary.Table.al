table 50210 "LAB Veterinary"
{
    DataClassification = CustomerContent;
    Caption = 'Veterinario';

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }
        field(2; Name; Text[80])
        {
            DataClassification = CustomerContent;
            Caption = 'Nombre';
        }
        field(3; "Phone No."; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'No. Teléfono';
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
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