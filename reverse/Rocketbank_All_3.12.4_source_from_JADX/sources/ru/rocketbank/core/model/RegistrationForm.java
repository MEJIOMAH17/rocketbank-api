package ru.rocketbank.core.model;

public class RegistrationForm {
    public Form form;

    public static class DocumentPhotos {
        private int first_page;
        private int registration_page;

        public DocumentPhotos(int i, int i2) {
            this.first_page = i;
            this.registration_page = i2;
        }
    }

    public static class Form {
        private String codeword;
        private boolean complete = true;
        private DocumentPhotos document_photos;
        private String email;
        private String name_in_latin;

        public void setEmail(String str) {
            this.email = str;
        }

        public void setCodeword(String str) {
            this.codeword = str;
        }

        public void setName_in_latin(String str) {
            this.name_in_latin = str;
        }

        public void setComplete(boolean z) {
            this.complete = z;
        }

        public void setDocument_photos(DocumentPhotos documentPhotos) {
            this.document_photos = documentPhotos;
        }
    }

    public RegistrationForm(Form form) {
        this.form = form;
    }
}
