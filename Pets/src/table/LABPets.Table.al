table 50220 "LAB Pets"
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

            trigger OnValidate()
            begin
                if (Date2DMY("Date of Birth", 2) > Date2DMY(WorkDate(), 2)) or
                    ((Date2DMY("Date of Birth", 2) = Date2DMY(WorkDate(), 2)) and (Date2DMY("Date of Birth", 1) >= Date2DMY(WorkDate(), 1))) then
                    Rec.Age := Date2DMY(WorkDate(), 3) - Date2DMY("Date of Birth", 3) - 1
                else
                    Rec.Age := Date2DMY(WorkDate(), 3) - Date2DMY("Date of Birth", 3);
            end;
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

            OptionMembers = "Male","Female"," ";
            OptionCaption = 'Male,Female, ';
        }
        field(6; Microchip; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Microchip';
        }
        field(7; "Owner No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No. Propietario';
            TableRelation = "LAB PetOwners";
            //recuperar los datos
            trigger OnValidate()
            var
                PetOwner: Record "LAB PetOwners";
            begin
                if PetOwner.Get("Owner No.") then begin
                    "Owner Name" := PetOwner.Name;
                    "Owner Address" := PetOwner.Address;
                    "Owner Phone No." := PetOwner."Phone No.";
                    "Owner Email" := PetOwner.Email;
                end;
            end;
        }
        field(8; "Owner Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Nombre Propietario';
            Editable = false;
        }
        field(9; "Owner Address"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Dirección Propietario';
            Editable = false;
        }
        field(10; "Owner Phone No."; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Teléfono Propietario';
            Editable = false;
        }
        field(11; "Owner Email"; Text[80])
        {
            DataClassification = CustomerContent;
            Caption = 'Email Propietario';
            Editable = false;
        }
        field(12; "Preferred Veterinary"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Veterinario Preferido';
            TableRelation = "LAB Veterinary";

            /*trigger OnValidate()

            begin
                "Veterinary Name" := "Preferred Veterinary";
            end;*/
        }
        field(13; "Veterinary Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Nombre Veterinario';
            Editable = false;
        }
        field(14; Species; Enum "LAB Species")
        {
            DataClassification = CustomerContent;
            Caption = 'Especie';
        }
        field(16; Breed; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Raza';
        }
        field(17; Deceased; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Fallecido';
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