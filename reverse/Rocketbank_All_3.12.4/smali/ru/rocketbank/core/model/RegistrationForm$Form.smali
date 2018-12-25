.class public Lru/rocketbank/core/model/RegistrationForm$Form;
.super Ljava/lang/Object;
.source "RegistrationForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/RegistrationForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Form"
.end annotation


# instance fields
.field private codeword:Ljava/lang/String;

.field private complete:Z

.field private document_photos:Lru/rocketbank/core/model/RegistrationForm$DocumentPhotos;

.field private email:Ljava/lang/String;

.field private name_in_latin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lru/rocketbank/core/model/RegistrationForm$Form;->complete:Z

    return-void
.end method


# virtual methods
.method public setCodeword(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/core/model/RegistrationForm$Form;->codeword:Ljava/lang/String;

    return-void
.end method

.method public setComplete(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lru/rocketbank/core/model/RegistrationForm$Form;->complete:Z

    return-void
.end method

.method public setDocument_photos(Lru/rocketbank/core/model/RegistrationForm$DocumentPhotos;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lru/rocketbank/core/model/RegistrationForm$Form;->document_photos:Lru/rocketbank/core/model/RegistrationForm$DocumentPhotos;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lru/rocketbank/core/model/RegistrationForm$Form;->email:Ljava/lang/String;

    return-void
.end method

.method public setName_in_latin(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lru/rocketbank/core/model/RegistrationForm$Form;->name_in_latin:Ljava/lang/String;

    return-void
.end method
