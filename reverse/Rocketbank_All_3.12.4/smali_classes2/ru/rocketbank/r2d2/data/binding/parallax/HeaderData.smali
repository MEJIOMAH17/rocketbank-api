.class public Lru/rocketbank/r2d2/data/binding/parallax/HeaderData;
.super Ljava/lang/Object;
.source "HeaderData.kt"


# instance fields
.field private final color:Landroid/databinding/ObservableInt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/databinding/ObservableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/parallax/HeaderData;->color:Landroid/databinding/ObservableInt;

    return-void
.end method


# virtual methods
.method public final getColor()Landroid/databinding/ObservableInt;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/parallax/HeaderData;->color:Landroid/databinding/ObservableInt;

    return-object v0
.end method
