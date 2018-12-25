.class public final Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;
.super Ljava/lang/Object;
.source "ToolbarWithButtonOnlyData.kt"


# instance fields
.field private final isEnabled:Landroid/databinding/ObservableBoolean;

.field private final title:Landroid/databinding/ObservableField;
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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;->title:Landroid/databinding/ObservableField;

    .line 12
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0}, Landroid/databinding/ObservableBoolean;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;->isEnabled:Landroid/databinding/ObservableBoolean;

    return-void
.end method


# virtual methods
.method public final getTitle()Landroid/databinding/ObservableField;
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
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;->title:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final isEnabled()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;->isEnabled:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method
