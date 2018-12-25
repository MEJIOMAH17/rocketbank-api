.class public final Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;
.super Ljava/lang/Object;
.source "NonSelectedDiscountsData.kt"


# instance fields
.field private final confirmEnabled:Landroid/databinding/ObservableBoolean;

.field private final selectionStatus:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final selectionTextVisibility:Landroid/databinding/ObservableBoolean;

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
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;-><init>(Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/Ref;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionStatut"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0, p3}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->confirmEnabled:Landroid/databinding/ObservableBoolean;

    .line 12
    new-instance p3, Landroid/databinding/ObservableField;

    invoke-direct {p3, p1}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->title:Landroid/databinding/ObservableField;

    .line 13
    new-instance p1, Landroid/databinding/ObservableField;

    invoke-direct {p1, p2}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->selectionStatus:Landroid/databinding/ObservableField;

    .line 14
    new-instance p1, Landroid/databinding/ObservableBoolean;

    invoke-direct {p1, p4}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->selectionTextVisibility:Landroid/databinding/ObservableBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/Ref;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const-string p2, ""

    :cond_1
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 10
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final getConfirmEnabled()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->confirmEnabled:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getSelectionStatus()Landroid/databinding/ObservableField;
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
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->selectionStatus:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getSelectionTextVisibility()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->selectionTextVisibility:Landroid/databinding/ObservableBoolean;

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

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->title:Landroid/databinding/ObservableField;

    return-object v0
.end method
