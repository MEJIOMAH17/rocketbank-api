.class public Lru/rocketbank/core/model/RegistrationForm$DocumentPhotos;
.super Ljava/lang/Object;
.source "RegistrationForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/RegistrationForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocumentPhotos"
.end annotation


# instance fields
.field private first_page:I

.field private registration_page:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lru/rocketbank/core/model/RegistrationForm$DocumentPhotos;->first_page:I

    .line 49
    iput p2, p0, Lru/rocketbank/core/model/RegistrationForm$DocumentPhotos;->registration_page:I

    return-void
.end method
