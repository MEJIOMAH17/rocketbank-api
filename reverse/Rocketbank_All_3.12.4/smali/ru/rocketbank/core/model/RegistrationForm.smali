.class public Lru/rocketbank/core/model/RegistrationForm;
.super Ljava/lang/Object;
.source "RegistrationForm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/RegistrationForm$DocumentPhotos;,
        Lru/rocketbank/core/model/RegistrationForm$Form;
    }
.end annotation


# instance fields
.field public form:Lru/rocketbank/core/model/RegistrationForm$Form;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/RegistrationForm$Form;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lru/rocketbank/core/model/RegistrationForm;->form:Lru/rocketbank/core/model/RegistrationForm$Form;

    return-void
.end method
