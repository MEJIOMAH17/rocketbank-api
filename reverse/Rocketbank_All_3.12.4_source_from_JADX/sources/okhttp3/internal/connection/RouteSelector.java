package okhttp3.internal.connection;

import com.google.gson.internal.Streams;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Route;
import okhttp3.internal.Util;
import ru.rocketbank.r2d2.root.chat.ChatFragment;

public final class RouteSelector {
    private final Address address;
    private final Call call;
    private final EventListener eventListener;
    private List<InetSocketAddress> inetSocketAddresses = Collections.emptyList();
    private int nextProxyIndex;
    private final List<Route> postponedRoutes = new ArrayList();
    private List<Proxy> proxies = Collections.emptyList();
    private final Streams routeDatabase$7baadc7e;

    public static final class Selection {
        private int nextRouteIndex = 0;
        private final List<Route> routes;

        Selection(List<Route> list) {
            this.routes = list;
        }

        public final boolean hasNext() {
            return this.nextRouteIndex < this.routes.size();
        }

        public final List<Route> getAll() {
            return new ArrayList(this.routes);
        }

        public final Route next() {
            if ((this.nextRouteIndex < this.routes.size() ? 1 : null) == null) {
                throw new NoSuchElementException();
            }
            List list = this.routes;
            int i = this.nextRouteIndex;
            this.nextRouteIndex = i + 1;
            return (Route) list.get(i);
        }
    }

    public RouteSelector(Address address, Streams streams, Call call, EventListener eventListener) {
        this.address = address;
        this.routeDatabase$7baadc7e = streams;
        this.call = call;
        this.eventListener = eventListener;
        streams = address.url();
        address = address.proxy();
        if (address != null) {
            address = Collections.singletonList(address);
        } else {
            List select = this.address.proxySelector().select(streams.uri());
            if (select == null || select.isEmpty() != null) {
                address = Util.immutableList(Proxy.NO_PROXY);
            } else {
                address = Util.immutableList(select);
            }
        }
        this.proxies = address;
        this.nextProxyIndex = 0;
    }

    public final Selection next() throws IOException {
        if (hasNext()) {
            List arrayList = new ArrayList();
            do {
                int i = 0;
                int i2 = 1;
                if ((this.nextProxyIndex < this.proxies.size() ? 1 : 0) == 0) {
                    break;
                }
                if (this.nextProxyIndex >= this.proxies.size()) {
                    i2 = 0;
                }
                if (i2 == 0) {
                    StringBuilder stringBuilder = new StringBuilder("No route to ");
                    stringBuilder.append(this.address.url().host());
                    stringBuilder.append("; exhausted proxy configurations: ");
                    stringBuilder.append(this.proxies);
                    throw new SocketException(stringBuilder.toString());
                }
                List list = this.proxies;
                int i3 = this.nextProxyIndex;
                this.nextProxyIndex = i3 + 1;
                Proxy proxy = (Proxy) list.get(i3);
                resetNextInetSocketAddress(proxy);
                i3 = this.inetSocketAddresses.size();
                while (i < i3) {
                    Route route = new Route(this.address, proxy, (InetSocketAddress) this.inetSocketAddresses.get(i));
                    if (this.routeDatabase$7baadc7e.shouldPostpone(route)) {
                        this.postponedRoutes.add(route);
                    } else {
                        arrayList.add(route);
                    }
                    i++;
                }
            } while (arrayList.isEmpty());
            if (arrayList.isEmpty()) {
                arrayList.addAll(this.postponedRoutes);
                this.postponedRoutes.clear();
            }
            return new Selection(arrayList);
        }
        throw new NoSuchElementException();
    }

    public final void connectFailed(Route route, IOException iOException) {
        if (!(route.proxy().type() == Type.DIRECT || this.address.proxySelector() == null)) {
            this.address.proxySelector().connectFailed(this.address.url().uri(), route.proxy().address(), iOException);
        }
        this.routeDatabase$7baadc7e.failed(route);
    }

    private void resetNextInetSocketAddress(Proxy proxy) throws IOException {
        String hostName;
        int port;
        int size;
        int i;
        StringBuilder stringBuilder;
        this.inetSocketAddresses = new ArrayList();
        if (proxy.type() != Type.DIRECT) {
            if (proxy.type() != Type.SOCKS) {
                SocketAddress address = proxy.address();
                if (address instanceof InetSocketAddress) {
                    InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                    InetAddress address2 = inetSocketAddress.getAddress();
                    if (address2 == null) {
                        hostName = inetSocketAddress.getHostName();
                    } else {
                        hostName = address2.getHostAddress();
                    }
                    port = inetSocketAddress.getPort();
                    if (port > 0) {
                        if (port > ChatFragment.TYPE_MESSAGE_TYPING) {
                            if (proxy.type() != Type.SOCKS) {
                                this.inetSocketAddresses.add(InetSocketAddress.createUnresolved(hostName, port));
                                return;
                            }
                            proxy = this.address.dns().lookup(hostName);
                            if (proxy.isEmpty()) {
                                size = proxy.size();
                                for (i = 0; i < size; i++) {
                                    this.inetSocketAddresses.add(new InetSocketAddress((InetAddress) proxy.get(i), port));
                                }
                                return;
                            }
                            StringBuilder stringBuilder2 = new StringBuilder();
                            stringBuilder2.append(this.address.dns());
                            stringBuilder2.append(" returned no addresses for ");
                            stringBuilder2.append(hostName);
                            throw new UnknownHostException(stringBuilder2.toString());
                        }
                    }
                    stringBuilder = new StringBuilder("No route to ");
                    stringBuilder.append(hostName);
                    stringBuilder.append(":");
                    stringBuilder.append(port);
                    stringBuilder.append("; port is out of range");
                    throw new SocketException(stringBuilder.toString());
                }
                StringBuilder stringBuilder3 = new StringBuilder("Proxy.address() is not an InetSocketAddress: ");
                stringBuilder3.append(address.getClass());
                throw new IllegalArgumentException(stringBuilder3.toString());
            }
        }
        hostName = this.address.url().host();
        port = this.address.url().port();
        if (port > 0) {
            if (port > ChatFragment.TYPE_MESSAGE_TYPING) {
                if (proxy.type() != Type.SOCKS) {
                    proxy = this.address.dns().lookup(hostName);
                    if (proxy.isEmpty()) {
                        size = proxy.size();
                        for (i = 0; i < size; i++) {
                            this.inetSocketAddresses.add(new InetSocketAddress((InetAddress) proxy.get(i), port));
                        }
                        return;
                    }
                    StringBuilder stringBuilder22 = new StringBuilder();
                    stringBuilder22.append(this.address.dns());
                    stringBuilder22.append(" returned no addresses for ");
                    stringBuilder22.append(hostName);
                    throw new UnknownHostException(stringBuilder22.toString());
                }
                this.inetSocketAddresses.add(InetSocketAddress.createUnresolved(hostName, port));
                return;
            }
        }
        stringBuilder = new StringBuilder("No route to ");
        stringBuilder.append(hostName);
        stringBuilder.append(":");
        stringBuilder.append(port);
        stringBuilder.append("; port is out of range");
        throw new SocketException(stringBuilder.toString());
    }

    public final boolean hasNext() {
        if (!(this.nextProxyIndex < this.proxies.size())) {
            if (this.postponedRoutes.isEmpty()) {
                return false;
            }
        }
        return true;
    }
}
