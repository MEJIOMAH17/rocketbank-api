.class final Lio/realm/rx/RealmObservableFactory$6$1;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/rx/RealmObservableFactory$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/RealmResults<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$6;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$6;Lrx/Subscriber;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$6$1;->this$1:Lio/realm/rx/RealmObservableFactory$6;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$6$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onChange$5d527811()V
    .locals 2

    .line 1148
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$6$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1149
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$6$1;->val$subscriber:Lrx/Subscriber;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$6$1;->this$1:Lio/realm/rx/RealmObservableFactory$6;

    iget-object v1, v1, Lio/realm/rx/RealmObservableFactory$6;->val$results:Lio/realm/RealmResults;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
