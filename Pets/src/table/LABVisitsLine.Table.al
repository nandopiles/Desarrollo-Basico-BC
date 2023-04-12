table 50249 "LAB Visits Line"
{
    DataClassification = CustomerContent;
    Caption = 'Línea de Visitas';

    fields
    {
        field(1; "Visit No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No. Visita';
        }
        field(2; "Line No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'No. Línea';
        }
        field(3; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';

            TableRelation = "LAB Visits Concepts";
            trigger OnValidate()
            var
                Visits: Record "LAB Visits Concepts";
            begin
                Description := Visits.Description;
                if (Visits."Unit Price" <> 0) then
                    "Unit Price" := Visits."Unit Price";
                Quantity := 1;
            end;
        }
        field(4; Description; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Descripción';
        }
        field(5; Quantity; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Cantidad';

            trigger OnValidate()
            begin
                Amount := Round(Quantity * Amount, 2);
            end;
        }
        field(6; "Unit Price"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Precio Unitario';
        }
        field(7; Amount; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Importe';
        }
    }

    keys
    {
        key(PK; "Visit No.")
        {
            Clustered = true;
        }
    }
}