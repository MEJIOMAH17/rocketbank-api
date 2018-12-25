.class public Lru/rocketbank/core/model/migration/UpdateTitleEvent;
.super Ljava/lang/Object;
.source "UpdateTitleEvent.java"

# interfaces
.implements Lru/rocketbank/core/events/EventHelper$IEvent;


# instance fields
.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/model/migration/UpdateTitleEvent;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/model/migration/UpdateTitleEvent;->title:Ljava/lang/String;

    return-object v0
.end method
