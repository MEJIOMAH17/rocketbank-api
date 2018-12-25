.class public Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding$OnClickListenerImpl;
.super Ljava/lang/Object;
.source "ActivityDeliveryBinding.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnClickListenerImpl"
.end annotation


# instance fields
.field private value:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding$OnClickListenerImpl;->value:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public setValue(Landroid/view/View$OnClickListener;)Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding$OnClickListenerImpl;
    .locals 0

    .line 272
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding$OnClickListenerImpl;->value:Landroid/view/View$OnClickListener;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object p0
.end method
