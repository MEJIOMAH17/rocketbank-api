.class public final Lru/rocketbank/r2d2/root/operation/vh/TagState;
.super Ljava/lang/Object;
.source "TagState.kt"


# instance fields
.field private final categoryName:Landroid/databinding/ObservableField;
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
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/TagState;->categoryName:Landroid/databinding/ObservableField;

    return-void
.end method


# virtual methods
.method public final getCategoryName()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/TagState;->categoryName:Landroid/databinding/ObservableField;

    return-object v0
.end method
