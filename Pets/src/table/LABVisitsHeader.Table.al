table 50240 "LAB Visits Header"
{
    DataClassification = CustomerContent;
    Caption = 'Cabecera Visitas';

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }
        field(2; "Pet No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No. Mascota';

            trigger OnValidate()
            begin
                CopyDataFromPet("Pet No.");
            end;
        }
        field(3; "Pet Name"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Nombre Mascota';
            Editable = false;
        }
        field(4; "Pet Owner"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Propietario Mascota';
            Editable = false;
        }
        field(5; "Pet Address"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Dirección Mascota';
        }
        field(6; "Pet Phone No."; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'No. Teléfono Mascota';
        }
        field(7; Veterinary; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Veterinario';
        }
        field(8; "Visit Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Fecha Visita';

            trigger OnValidate()
            begin
                InitRecord();
            end;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    local procedure CopyDataFromPet("Pet No. Find": Code[20])
    var
        Pet: Record "LAB Pets";

    begin
        if Pet.Get("Pet No. Find") then begin
            "Pet Name" := Pet.Name;
            "Pet Owner" := Pet."Owner No.";
            "Pet Address" := Pet."Owner Address";
            "Pet Phone No." := Pet."Owner Phone No.";
            Veterinary := Pet."Preferred Veterinary";
        end;
    end;

    local procedure InitRecord()
    begin
        "Visit Date" := WorkDate();
    end;
}