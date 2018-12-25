.class public final Lru/rocketbank/core/data/binding/CalendarItemData;
.super Ljava/lang/Object;
.source "CalendarItemData.kt"


# instance fields
.field private final background:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final dayText:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isDelivery:Landroid/databinding/ObservableBoolean;

.field private final isNextMonth:Landroid/databinding/ObservableBoolean;

.field private final textColor:Landroid/databinding/ObservableInt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/data/binding/CalendarItemData;->dayText:Landroid/databinding/ObservableField;

    .line 14
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/data/binding/CalendarItemData;->background:Landroid/databinding/ObservableField;

    .line 15
    new-instance v0, Landroid/databinding/ObservableInt;

    invoke-direct {v0}, Landroid/databinding/ObservableInt;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/data/binding/CalendarItemData;->textColor:Landroid/databinding/ObservableInt;

    .line 16
    new-instance v0, Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/core/data/binding/CalendarItemData;->isDelivery:Landroid/databinding/ObservableBoolean;

    .line 17
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/core/data/binding/CalendarItemData;->isNextMonth:Landroid/databinding/ObservableBoolean;

    return-void
.end method


# virtual methods
.method public final getBackground()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/data/binding/CalendarItemData;->background:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getDayText()Landroid/databinding/ObservableField;
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
    iget-object v0, p0, Lru/rocketbank/core/data/binding/CalendarItemData;->dayText:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getTextColor()Landroid/databinding/ObservableInt;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/data/binding/CalendarItemData;->textColor:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final isDelivery()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/data/binding/CalendarItemData;->isDelivery:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final isNextMonth()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/data/binding/CalendarItemData;->isNextMonth:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method
