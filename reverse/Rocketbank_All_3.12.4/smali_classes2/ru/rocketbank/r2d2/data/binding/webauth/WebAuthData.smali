.class public final Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;
.super Ljava/lang/Object;
.source "WebAuthData.kt"


# instance fields
.field private final buttonsEnabled:Landroid/databinding/ObservableBoolean;

.field private final text:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ttl:Landroid/databinding/ObservableField;
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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;->text:Landroid/databinding/ObservableField;

    .line 11
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;->ttl:Landroid/databinding/ObservableField;

    .line 12
    new-instance v0, Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;->buttonsEnabled:Landroid/databinding/ObservableBoolean;

    return-void
.end method


# virtual methods
.method public final getButtonsEnabled()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;->buttonsEnabled:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getText()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;->text:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getTtl()Landroid/databinding/ObservableField;
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
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;->ttl:Landroid/databinding/ObservableField;

    return-object v0
.end method
