table 50200 "LAB PetOwners"
{
    DataClassification = CustomerContent;
    Caption = 'Propietarios';

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }
        field(2; Name; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Nombre';
        }
        field(3; Address; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Dirección';
        }
        field(4; "Phone No."; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'No. Teléfono';
        }
        field(5; Email; Text[80])
        {
            DataClassification = CustomerContent;
            Caption = 'Email';
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