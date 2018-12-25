.class public abstract Lcom/jakewharton/rxbinding/view/MenuItemEvent;
.super Ljava/lang/Object;
.source "MenuItemEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/view/MenuItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final menuItem:Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# virtual methods
.method public final menuItem()Landroid/view/MenuItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/MenuItemEvent;->menuItem:Landroid/view/MenuItem;

    return-object v0
.end method
