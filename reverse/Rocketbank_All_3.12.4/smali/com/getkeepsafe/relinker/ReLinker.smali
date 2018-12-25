.class public final Lcom/getkeepsafe/relinker/ReLinker;
.super Ljava/lang/Object;
.source "ReLinker.java"

# interfaces
.implements Lcom/google/maps/android/clustering/ClusterItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;,
        Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;,
        Lcom/getkeepsafe/relinker/ReLinker$LoadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/RealmObject;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/maps/android/clustering/ClusterItem;"
    }
.end annotation


# instance fields
.field private latLng:Lcom/google/android/gms/maps/model/LatLng;

.field private final realmObject:Lio/realm/RealmObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/realm/RealmObject;Ljava/lang/String;DD)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "DD)V"
        }
    .end annotation

    const-string v0, "realmObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/getkeepsafe/relinker/ReLinker;->realmObject:Lio/realm/RealmObject;

    .line 3014
    iput-object p2, p0, Lcom/getkeepsafe/relinker/ReLinker;->title:Ljava/lang/String;

    .line 3015
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p1, p3, p4, p5, p6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object p1, p0, Lcom/getkeepsafe/relinker/ReLinker;->latLng:Lcom/google/android/gms/maps/model/LatLng;

    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1070
    new-instance v0, Lcom/getkeepsafe/relinker/ReLinkerInstance;

    invoke-direct {v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibrary$11a583b2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .line 2019
    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinker;->latLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getRealmObject()Lio/realm/RealmObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2008
    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinker;->realmObject:Lio/realm/RealmObject;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 2010
    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinker;->title:Ljava/lang/String;

    return-object v0
.end method
