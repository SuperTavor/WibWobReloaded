.class public Lcom/facebook/share/Sharer$Result;
.super Ljava/lang/Object;


# instance fields
.field final postId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/share/Sharer$Result;->postId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPostId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/Sharer$Result;->postId:Ljava/lang/String;

    return-object v0
.end method
