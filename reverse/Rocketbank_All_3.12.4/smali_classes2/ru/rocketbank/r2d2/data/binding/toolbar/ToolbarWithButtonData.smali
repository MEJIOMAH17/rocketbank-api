.class public Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;
.super Ljava/lang/Object;
.source "ToolbarWithButtonData.kt"


# instance fields
.field private final button:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final buttonEnabled:Landroid/databinding/ObservableBoolean;

.field private final buttonVisibility:Landroid/databinding/ObservableInt;

.field private final title:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final toolbarVisible:Landroid/databinding/ObservableBoolean;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;ZIILkotlin/jvm/internal/Ref;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0, p1}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->title:Landroid/databinding/ObservableField;

    .line 10
    new-instance p1, Landroid/databinding/ObservableField;

    invoke-direct {p1, p2}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->button:Landroid/databinding/ObservableField;

    .line 11
    new-instance p1, Landroid/databinding/ObservableBoolean;

    invoke-direct {p1, p3}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->buttonEnabled:Landroid/databinding/ObservableBoolean;

    .line 12
    new-instance p1, Landroid/databinding/ObservableInt;

    invoke-direct {p1, p4}, Landroid/databinding/ObservableInt;-><init>(I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->buttonVisibility:Landroid/databinding/ObservableInt;

    .line 13
    new-instance p1, Landroid/databinding/ObservableBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->toolbarVisible:Landroid/databinding/ObservableBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIILkotlin/jvm/internal/Ref;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 8
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method


# virtual methods
.method public final getButton()Landroid/databinding/ObservableField;
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
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->button:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getButtonEnabled()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->buttonEnabled:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getButtonVisibility()Landroid/databinding/ObservableInt;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->buttonVisibility:Landroid/databinding/ObservableInt;

    return-object v0
.end method

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

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->title:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getToolbarVisible()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->toolbarVisible:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method
