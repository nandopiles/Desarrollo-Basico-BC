table 50202 "LAB Pets"
{
    DataClassification = CustomerContent;
    Caption = 'Mascotas';

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }
        field(2; Name; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Nombre';
        }
        field(3; "Date of Birth"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Fecha de Nacimiento';
        }
        field(4; Age; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Edad';
        }
        field(5; Sex; Option)
        {
            DataClassification = CustomerContent;
            Caption = 'Sexo';

            OptionMembers = "Male","Female","Others";
            OptionCaption = 'Male,Female,Others';
        }
        field(6; Microchip; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Microchip';
        }
        field(7; "Owner No."; Blob)
        {
            DataClassification = CustomerContent;
            Caption = 'No. Propietario';
        }
        field(8; "Owner Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Nombre Propietario';
        }
        field(9; "Owner Address"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Dirección Propietario';
        }
        field(10; Owner; Blob)
        {
            DataClassification = ToBeClassified;
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