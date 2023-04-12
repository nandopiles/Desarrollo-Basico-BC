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
        field(6; "How many pets"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = '¿Cuántos Animales tiene?';

        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}