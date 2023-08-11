.class public Lcom/hangame/hsp/oauth/signpost/oauth/signpost/basic/DefaultOAuthConsumer;
.super Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;


# static fields
.field public static Signature:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "aaa"

    sput-object v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/basic/DefaultOAuthConsumer;->Signature:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected wrap(Ljava/lang/Object;)Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;
    .locals 2

    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The default consumer expects requests of type java.net.HttpURLConnection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/basic/HttpURLConnectionRequestAdapter;

    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-direct {v0, p1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/basic/HttpURLConnectionRequestAdapter;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method
