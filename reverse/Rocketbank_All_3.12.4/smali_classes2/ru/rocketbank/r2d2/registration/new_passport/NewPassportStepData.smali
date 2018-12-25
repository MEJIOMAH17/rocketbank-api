.class public final Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;
.super Ljava/lang/Object;
.source "NewPassportStepData.kt"


# instance fields
.field private final bottomButtonText:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final buttonsEnabled:Landroid/databinding/ObservableBoolean;

.field private final helpText:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final image:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mainButtonText:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final photoTitle:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->image:Landroid/databinding/ObservableField;

    .line 12
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->helpText:Landroid/databinding/ObservableField;

    .line 13
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->photoTitle:Landroid/databinding/ObservableField;

    .line 14
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->mainButtonText:Landroid/databinding/ObservableField;

    .line 15
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->bottomButtonText:Landroid/databinding/ObservableField;

    .line 16
    new-instance v0, Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->buttonsEnabled:Landroid/databinding/ObservableBoolean;

    return-void
.end method


# virtual methods
.method public final getBottomButtonText()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->bottomButtonText:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getButtonsEnabled()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->buttonsEnabled:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getHelpText()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->helpText:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getImage()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->image:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getMainButtonText()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->mainButtonText:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getPhotoTitle()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->photoTitle:Landroid/databinding/ObservableField;

    return-object v0
.end method
