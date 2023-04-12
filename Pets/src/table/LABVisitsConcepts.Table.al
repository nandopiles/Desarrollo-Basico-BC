table 50230 "LAB Visits Concepts"
{
    DataClassification = CustomerContent;
    Caption = 'Conceptos de visita';

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }
        field(2; Description; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Descripción';
        }
        field(3; "Unit Price"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Precio Unitario';
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