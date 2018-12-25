.class public final Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;
.super Ljava/lang/Object;
.source "APManageCardData.kt"


# instance fields
.field private final androidPayToken:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultEnabled:Landroid/databinding/ObservableBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;->defaultEnabled:Landroid/databinding/ObservableBoolean;

    .line 11
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;->androidPayToken:Landroid/databinding/ObservableField;

    return-void
.end method


# virtual methods
.method public final getAndroidPayToken()Landroid/databinding/ObservableField;
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
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;->androidPayToken:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getDefaultEnabled()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;->defaultEnabled:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method
