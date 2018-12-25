.class public Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl1;
.super Ljava/lang/Object;
.source "AtmsMapFragmentBinding.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnClickListenerImpl1"
.end annotation


# instance fields
.field private value:Lru/rocketbank/r2d2/data/binding/MapActionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 601
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl1;->value:Lru/rocketbank/r2d2/data/binding/MapActionListener;

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/data/binding/MapActionListener;->navigateMe(Landroid/view/View;)V

    return-void
.end method

.method public setValue(Lru/rocketbank/r2d2/data/binding/MapActionListener;)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl1;
    .locals 0

    .line 596
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl1;->value:Lru/rocketbank/r2d2/data/binding/MapActionListener;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object p0
.end method
