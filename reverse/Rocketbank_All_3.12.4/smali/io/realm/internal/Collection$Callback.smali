.class final Lio/realm/internal/Collection$Callback;
.super Ljava/lang/Object;
.source "Collection.java"

# interfaces
.implements Lio/realm/internal/ObserverPairList$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/internal/ObserverPairList$Callback<",
        "Lio/realm/internal/Collection$CollectionObserverPair;",
        ">;"
    }
.end annotation


# instance fields
.field private final changeSet$54e51ec9:Landroid/support/v4/content/Loader$OnLoadCompleteListener;


# direct methods
.method constructor <init>(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lio/realm/internal/Collection$Callback;->changeSet$54e51ec9:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    return-void
.end method


# virtual methods
.method public final bridge synthetic onCalled(Lio/realm/internal/ObserverPairList$ObserverPair;Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p1, Lio/realm/internal/Collection$CollectionObserverPair;

    .line 1090
    invoke-virtual {p1}, Lio/realm/internal/Collection$CollectionObserverPair;->onChange$752bd380$7d342efc$5d527811()V

    return-void
.end method
