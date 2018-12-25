.class public final Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;
.super Ljava/lang/Object;
.source "SoundBindingData.kt"


# instance fields
.field private final backgroundColor:Landroid/databinding/ObservableInt;

.field private final soundName:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final subTextColor:Landroid/databinding/ObservableInt;

.field private final textColor:Landroid/databinding/ObservableInt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/databinding/ObservableField;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->soundName:Landroid/databinding/ObservableField;

    .line 9
    new-instance v0, Landroid/databinding/ObservableInt;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->backgroundColor:Landroid/databinding/ObservableInt;

    .line 10
    new-instance v0, Landroid/databinding/ObservableInt;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->textColor:Landroid/databinding/ObservableInt;

    .line 11
    new-instance v0, Landroid/databinding/ObservableInt;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->subTextColor:Landroid/databinding/ObservableInt;

    return-void
.end method


# virtual methods
.method public final getBackgroundColor()Landroid/databinding/ObservableInt;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->backgroundColor:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final getSoundName()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->soundName:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getSubTextColor()Landroid/databinding/ObservableInt;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->subTextColor:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final getTextColor()Landroid/databinding/ObservableInt;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->textColor:Landroid/databinding/ObservableInt;

    return-object v0
.end method
