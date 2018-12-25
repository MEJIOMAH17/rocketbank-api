.class public final Lru/rocketbank/r2d2/data/binding/profile/ProfileData;
.super Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;
.source "ProfileData.kt"


# instance fields
.field private final toolbarBackDrawable:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final toolbarWhiteBackDrawable:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final userName:Landroid/databinding/ObservableField;
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

    .line 7
    invoke-direct {p0}, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;-><init>()V

    .line 8
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/profile/ProfileData;->toolbarBackDrawable:Landroid/databinding/ObservableField;

    .line 9
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/profile/ProfileData;->toolbarWhiteBackDrawable:Landroid/databinding/ObservableField;

    .line 11
    new-instance v0, Landroid/databinding/ObservableField;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/profile/ProfileData;->userName:Landroid/databinding/ObservableField;

    return-void
.end method


# virtual methods
.method public final getToolbarBackDrawable()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/profile/ProfileData;->toolbarBackDrawable:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getToolbarWhiteBackDrawable()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/profile/ProfileData;->toolbarWhiteBackDrawable:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getUserName()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/profile/ProfileData;->userName:Landroid/databinding/ObservableField;

    return-object v0
.end method
