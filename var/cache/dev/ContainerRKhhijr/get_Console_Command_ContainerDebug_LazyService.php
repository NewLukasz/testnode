<?php

namespace ContainerRKhhijr;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class get_Console_Command_ContainerDebug_LazyService extends App_KernelDevDebugContainer
{
    /**
     * Gets the private '.console.command.container_debug.lazy' shared service.
     *
     * @return \Symfony\Component\Console\Command\LazyCommand
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/console/Command/Command.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/console/Command/LazyCommand.php';

        return $container->privates['.console.command.container_debug.lazy'] = new \Symfony\Component\Console\Command\LazyCommand('debug:container', [], 'Display current services for an application', false, #[\Closure(name: 'console.command.container_debug', class: 'Symfony\\Bundle\\FrameworkBundle\\Command\\ContainerDebugCommand')] fn (): \Symfony\Bundle\FrameworkBundle\Command\ContainerDebugCommand => ($container->privates['console.command.container_debug'] ?? $container->load('getConsole_Command_ContainerDebugService')));
    }
}
